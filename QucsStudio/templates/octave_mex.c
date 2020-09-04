// Example for compiled Octave function (mex function).

#include <octave/mex.h>

void mexFunction (int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
  mexPrintf("number of input and output parameters: %d, %d\n", nrhs, nlhs);

  if(nrhs != 1 || !mxIsNumeric(prhs[0]))
    mexErrMsgTxt("Exactly one matrix as input expected.");

  mwSize len = mxGetNumberOfElements(prhs[0]);
  plhs[0] =
    (mxArray*)mxCreateNumericArray(mxGetNumberOfDimensions(prhs[0]),
              mxGetDimensions(prhs[0]), mxGetClassID(prhs[0]),
              (mxComplexity)mxIsComplex(prhs[0]));
  double *vri = mxGetPr(prhs[0]);
  double *vro = mxGetPr(plhs[0]);
     
  mwIndex i;
  if(mxIsComplex(prhs[0])) {
    double *vii = mxGetPi(prhs[0]);
    double *vio = mxGetPi(plhs[0]);

    for(i=0; i<len; i++) {
      vro[i] = vri[i] + 1;
      vio[i] = vii[i] + 2;
    }
  }
  else
    for(i=0; i<len; i++)
      vro[i] = vri[i] + 1;

  if(nlhs > 1) {
    plhs[1] = mxCreateDoubleMatrix(2, len, mxREAL);
    double *outData = mxGetPr(plhs[1]);

    for(i=0; i<len; i++) {
      outData[2*i] = 1.0;   // first row
      outData[2*i+1] = 2.0; // second row
    }
  }
}
