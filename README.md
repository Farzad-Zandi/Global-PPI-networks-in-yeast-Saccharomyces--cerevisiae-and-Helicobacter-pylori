# Global protein-protein interaction networks in yeast saccharomyces cerevisiae and helicobacter pylori
Understanding many biological processes relies heavily on accurately predicting protein-protein interactions (PPIs). In this study, we propose a novel method for predicting PPIs that is based on LogitBoost with a binary bat feature selection algorithm. Our approach involves the extraction of an initial feature vector by combining pseudo amino acid composition (PseAAC), pseudo-position-specific scoring matrix (PsePSSM), reduced sequence and index-vectors (RSIV), and autocorrelation descriptor (AD). Subsequently, a binary bat algorithm is applied to eliminate redundant features, and the resulting optimal features are fed into the LogitBoost classifier for the identification of PPIs. To evaluate the proposed method, we test it on two databases, Saccharomyces cerevisiae and Helicobacter pylori, using 10-fold cross-validation, and achieve accuracies of 94.39% and 97.89%, respectively. Our results showcase the significant potential of our pipeline in accurately predicting protein-protein interactions (PPIs), thereby offering a valuable resource to the scientific research community.

Farzad Zandi, Parvaneh Mansouri, Mohammad Goodarzi.

https://doi.org/10.1016/j.talanta.2023.124836

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

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
