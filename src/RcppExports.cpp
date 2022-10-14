// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// cal
double cal(NumericMatrix data_resample, NumericMatrix data_base, NumericMatrix data_experiment, int n_ancestry);
RcppExport SEXP _LDAandLDAS_cal(SEXP data_resampleSEXP, SEXP data_baseSEXP, SEXP data_experimentSEXP, SEXP n_ancestrySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix >::type data_resample(data_resampleSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type data_base(data_baseSEXP);
    Rcpp::traits::input_parameter< NumericMatrix >::type data_experiment(data_experimentSEXP);
    Rcpp::traits::input_parameter< int >::type n_ancestry(n_ancestrySEXP);
    rcpp_result_gen = Rcpp::wrap(cal(data_resample, data_base, data_experiment, n_ancestry));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_LDAandLDAS_cal", (DL_FUNC) &_LDAandLDAS_cal, 4},
    {NULL, NULL, 0}
};

RcppExport void R_init_LDAandLDAS(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
