# Eventex

Eventex é um projeto elaborado a partir do curso [Welcome to the Django][0] do [Henrique Bastos][1].

O objetivo é criar um site de eventos usando todos os recursos aprendidos durante o curso.

## Exercícios

Alguns exercícios de Python encontram-se [aqui][2].

## Como desenvolver?

Baixe e rode o `setup.sh`.

```
wget https://raw.githubusercontent.com/rg3915/wttd3/master/setup.sh
source setup.sh
```

Ou siga o passo a passo.

1. Clone o repositório.
2. Crie um virtualenv com Python 3.5
3. Ative o virtualenv.
4. Instale as dependências.
5. Configure a instância com o .env
6. Execute os testes.

```bash
git clone https://github.com/rg3915/wttd3.git
cd wttd3
python -m venv .venv
source .venv/bin/activate # Linux
pip install -r requirements/dev.txt
python contrib/env_gen.py
var=`python contrib/secret_gen.py`
printf '\nSECRET_KEY='$var >> .env
python manage.py test
```

[0]: www.welcometothedjango.com.br
[1]: henriquebastos.net
