data_dir:="./data/initial_data"

install_poetry:
	pip3 install poetry

install_unzip:
	sudo apt-get install unzip

mkdirs:
	mkdir $(data_dir) -p

install_deps: install_poetry
	poetry install

download_data: install_poetry
	poetry run gdown 1QVD03l0IIkak7rqKAuiVHHhabGud_G4y

first_step: download_data install_unzip mkdirs
	unzip data.zip -d $(data_dir)

clean:
	rm data.zip
