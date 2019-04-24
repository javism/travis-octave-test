% Check errors before exit and force exit Octave with error code
atexit('check_errors_exit');

pkg load statistics
warning('off','Octave:nearly-singular-matrix')
warning('off','Octave:singular-matrix')


addpath('src')

train = load('data/train_tae.0');
test = load('data/test_tae.0');

iristrain.patterns = center(train(:,1:end-1));
iristrain.targets = train(:,end);
iristest.patterns = center(test(:,1:end-1));
iristest.targets = test(:,end);

classifier = POM();
results = classifier.runAlgorithm(iristrain, iristest);

trainCM = confusionmat(results.predictedTrain,iristrain.targets);
testCM = confusionmat(results.predictedTest,iristest.targets);

accRef = 0.35;
testacc = sum(diag(testCM ))/sum(testCM(:));
if ( abs(accRef - testacc) < 0.1 )
  printf('\nTest OK\n');
else
  error('\nTest failed\n');
end

