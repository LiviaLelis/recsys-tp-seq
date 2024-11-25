# Sistemas de Recomendação Sequenciais

Nesse repositório apresentamos um breve material didático sobre sistemas de
recomendação sequenciais. O objetivo é apresentar uma visão geral sobre o
assunto, enquanto apresentamos uma abordagem de implementação de sistemas de
recomendação sequenciais baseada em redes neurais de atenção.

O conteúdo e implementação do material estão disponíveis em [SASRec.ipynb](./SASRec.ipynb).

## Obtenção do conjunto de dados

Para usuários de sistemas UNIX-like (como Linux ou MacOS), basta executar o
script `download.sh` dentro do diretório `data`.

Para realizar o processo manualmente, basta baixar o arquivo
[lastfm-dataset-1K.tar.gz](http://mtg.upf.edu/static/datasets/last.fm/lastfm-dataset-1K.tar.gz).
Depois, descompactar o arquivo dentro do diretório `data`.

Os arquivos `.tsv` do dataset devem então estar disponíveis em: `data/lastfm-dataset-1K/`.

## Instalação do ambiente

Para instalar o ambiente de desenvolvimento, recomendamos o uso do
[micromamba](https://mamba.readthedocs.io/en/latest/user_guide/micromamba.html)
ou do conda ([miniforge3](https://github.com/conda-forge/miniforge)).

Para a criação do ambiente e instalação dos pacotes necessários, execute:

```bash
micromamba create -n recsys-tp -c conda-forge python=3.12 polars pyarrow \
           pandas numpy matplotlib scikit-learn scipy plotly seaborn \
           jupyter tqdm ipympl joblib
```

Tendo o ambiente criado, basta executar:

```bash
micromamba activate recsys-tp
```

Esse comando irá ativar o ambiente criado no terminal atual.

Caso tenha uma GPU da NVIDIA, é possível instalar o PyTorch com:

```bash
micromamba install -c pytorch -c nvidia pytorch torchvision \
           torchaudio pytorch-cuda=12.4 
```

Caso contrário, basta instalar o PyTorch:

```bash
micromamba install pytorch torchvision torchaudio cpuonly -c pytorch
```

Outras opções de instalação do PyTorch podem ser vistas no [site oficial](https://pytorch.org/).

Tendo o ambiente criado, é só abrir o notebook no ambiente de preferência,
como por exemplo: PyCharm, Jupyter, VSCode, etc.

Para abrir o notebook no Jupyter Lab, basta executar:

```bash
# Executar com o ambiente recsys-tp ativo:
jupyter lab .
```
