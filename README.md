
```python
micromamba create -n recsys-tp -c conda-forge python=3.12 polars pyarrow pandas numpy matplotlib scikit-learn scipy plotly seaborn jupyter tqdm ipympl joblib
micromamba activate recsys-tp
micromamba install pytorch torchvision torchaudio pytorch-cuda=12.4 -c pytorch -c nvidia
```
