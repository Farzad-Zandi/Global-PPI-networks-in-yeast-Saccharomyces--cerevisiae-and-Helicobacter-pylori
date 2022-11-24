# Global-PPI-networks-in-yeast-Sacchramyces-cerevisiae-and-Helicobacter-pylori
Datasets are available in Datasets folder in .mat and .csv format.

Feature extraction methods are available in feature extraction folder implemented by matlab programming language.

Feature selection method (Binary Bat Aalgorithm) is available in feature selection folder implemented by matlab programming language.

To run model follow bellow steps:

1. Extract features with 4 feature selection methods AD, RSIV, PsePSSM, PseAAC as bellow:

          a) Run Auto_yeast.m for extracting autocorrelation descriptor features.

          b) Run selectfeature_Y.m for extracting reduced sequence and index-vectors features.

          c) Run PAAC_Y.m for extracting pseudo amino acid composition features.

          d) Create pseudo-position-specific scoring matrix with Blast and Run PsePSSM_y.m for extracting pseudo-position-specific scoring matrix features.

2. Fusion 4 extracted data, construct a 1318 dimension vector.

3. Run BBA code for extracting best features and save obtanied data.

4. Predict with any machine learning method that you like.
