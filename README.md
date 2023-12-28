# dotfiles

```sh
python3 -m venv .venv
source .venv/bin/activate
export PATH="$(pwd)/.venv/bin:$PATH"
python3 -m pip install -r requirements.txt
ansible-galaxy install -r requirements.yml
```
