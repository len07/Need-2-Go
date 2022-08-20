
### git clone the directory
Go inside the directory

### Type the following commands in order
python3 -m venv .venv

source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
pip list

### run the server
python manage.py runserver 0.0.0.0:8000

### visit the server at localhost:8000/reviews

### to kill the server `ctrl - c`

### exit the python virtual environment

deactivate

pip install djangorestframework

## migration

python manage.py migrate