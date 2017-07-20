#!/bin/bash

echo "LM-GT3gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -text data_train.text -lm LM-GT3gram.lm 
echo "Perplexity LM-GT3gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-GT3gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-N4gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -cdiscount4 -1 -cdiscount3 -1 -cdiscount2 -1 -cdiscount1 -1 -text data_train.text -lm LM-N4gram.lm 
echo "Perplexity LM-N4gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-N4gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-N04gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -cdiscount4 0.1 -cdiscount3 0.1 -cdiscount2 0.1 -cdiscount1 0.1 -text data_train.text -lm LM-N04gram.lm 
echo "Perplexity LM-N04gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-N04gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-N3gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -cdiscount3 -1 -cdiscount2 -1 -cdiscount1 -1 -text data_train.text -lm LM-N3gram.lm 
echo "Perplexity LM-N3gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-N3gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-N03gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -cdiscount3 0.1 -cdiscount2 0.1 -cdiscount1 0.1 -text data_train.text -lm LM-N03gram.lm 
echo "Perplexity LM-N03gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-N03gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-WB4gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -wbdiscount4 -wbdiscount3 -wbdiscount2 -wbdiscount1 -text data_train.text -lm LM-WB4gram.lm 
echo "Perplexity LM-WB4gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-WB4gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-WB3gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -wbdiscount3 -wbdiscount2 -wbdiscount1 -text data_train.text -lm LM-WB3gram.lm 
echo "Perplexity LM-WB3gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-WB3gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-RN4gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -ndiscount4 -ndiscount3 -ndiscount2 -ndiscount1 -text data_train.text -lm LM-RN4gram.lm 
echo "Perplexity LM-RN4gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-RN4gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-RN3gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -ndiscount3 -ndiscount2 -ndiscount1 -text data_train.text -lm LM-RN3gram.lm 
echo "Perplexity LM-RN3gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-RN3gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-CG4gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -kndiscount4 -kndiscount3 -kndiscount2 -kndiscount1 -text data_train.text -lm LM-CG4gram.lm 
echo "Perplexity LM-CG4gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-CG4gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-CG3gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -kndiscount3 -kndiscount2 -kndiscount1 -text data_train.text -lm LM-CG3gram.lm 
echo "Perplexity LM-CG3gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-CG3gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD04gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -addsmooth4 0 -addsmooth3 0 -addsmooth2 0 -addsmooth1 0 -text data_train.text -lm LM-ADD04gram.lm 
echo "Perplexity LM-ADD04gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD04gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD14gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -addsmooth4 1 -addsmooth2 1 -addsmooth3 1 -addsmooth1 1 -text data_train.text -lm LM-ADD14gram.lm 
echo "Perplexity LM-ADD14gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD14gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD014gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -addsmooth4 0.1 -addsmooth3 0.1 -addsmooth2 0.1 -addsmooth1 0.1 -text data_train.text -lm LM-ADD014gram.lm 
echo "Perplexity LM-ADD014gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD014gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD0014gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -addsmooth4 0.01 -addsmooth3 0.01 -addsmooth2 0.01 -addsmooth1 0.01 -text data_train.text -lm LM-ADD0014gram.lm 
echo "Perplexity LM-ADD0014gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD0014gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD00014gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -addsmooth4 0.001 -addsmooth3 0.001 -addsmooth2 0.001 -addsmooth1 0.001 -text data_train.text -lm LM-ADD00014gram.lm 
echo "Perplexity LM-ADD00014gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD00014gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD03gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -addsmooth3 0 -addsmooth2 0 -addsmooth1 0 -text data_train.text -lm LM-ADD03gram.lm 
echo "Perplexity LM-ADD03gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD03gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD13gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -addsmooth2 1 -addsmooth3 1 -addsmooth1 1 -text data_train.text -lm LM-ADD13gram.lm 
echo "Perplexity LM-ADD13gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD13gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD013gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -addsmooth3 0.1 -addsmooth2 0.1 -addsmooth1 0.1 -text data_train.text -lm LM-ADD013gram.lm 
echo "Perplexity LM-ADD014gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD013gram.lm -ppl videoaula.text
echo "----------------------------------"

echo "LM-ADD0013gram"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -addsmooth3 0.01 -addsmooth2 0.01 -addsmooth1 0.01 -text data_train.text -lm LM-ADD0013gram.lm 
echo "Perplexity LM-ADD0013gram: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm LM-ADD0013gram.lm -ppl videoaula.text
echo "----------------------------------"

version_model = LM-KN4gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -ukndiscount4 -ukndiscount3 -ukndiscount2 -ukndiscount1 -text data_train.text -lm ${version_model}.lm 
echo "Perplexity $version_model: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"

version_model = LM-KN3gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 3 -ukndiscount3 -ukndiscount2 -ukndiscount1 -text data_train.text -lm ${version_model}.lm 
echo "Perplexity ${version_model}: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"

echo "!!!!!!!!INTERPOLATE!!!!!!!!!!!"
version_model = LM-NI4gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -interpolate4 -interpolate3 -interpolate2 -cdiscount4 -1 -cdiscount3 -1 -cdiscount2 -1 -cdiscount1 -1 -text data_train.text -lm ${version_model}.lm 
echo "Perplexity ${version_model}: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"

version_model = LM-NI04gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -interpolate4 -interpolate3 -interpolate2 -cdiscount4 0 -cdiscount3 0 -cdiscount2 0 -cdiscount1 0 -text data_train.text -lm ${version_model}.lm 
echo "Perplexity ${version_model}: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"

version_model = LM-WBI4gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -interpolate4 -interpolate3 -interpolate2 -wbdiscount4 -wbdiscount3 -wbdiscount2 -wbdiscount1 -text data_train.text -lm ${version_model}.lm 
echo "Perplexity ${version_model}: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"

version_model = LM-CGI4gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -interpolate4 -interpolate3 -interpolate2 -kndiscount4 -kndiscount3 -kndiscount2 -kndiscount1 -text data_train.text -lm  ${version_model}.lm 
echo "Perplexity ${version_model}: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"

version_model = LM-KNI4gram
echo "${version_model}"
./../kaldi/tools/srilm/bin/i686-m64/ngram-count -order 4 -interpolate4 -interpolate3 -interpolate2 -ukndiscount4 -ukndiscount3 -ukndiscount2 -ukndiscount1 -text data_train.text -lm ${version_model}.lm 
echo "Perplexity ${version_model}: "
./../kaldi/tools/srilm/bin/i686-m64/ngram -lm ${version_model}.lm -ppl videoaula.text
echo "----------------------------------"


