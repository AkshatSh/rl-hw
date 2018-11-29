
rm -rf submit/
mkdir -p submit

prepare () {
    if [[ $(git diff origin -- $1 | wc -c) -eq 0 ]]; then 
        echo "WARNING: $1 is unchanged according to git."
    fi
    cp $1 submit/
}

echo "Creating tarball..."
# prepare src/batch_norm.c
# prepare trycifar.py
prepare rl_hw_problems.ipynb
prepare RL-HW\ Graphs.pdf 

tar cvzf submit.tar.gz submit
rm -rf submit/
echo "Done. Please upload submit.tar.gz to Canvas."