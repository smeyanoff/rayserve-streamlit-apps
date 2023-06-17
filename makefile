initial_data_dir:="./data/initial_data"
prepared_data_dir:="./data/prepared_data"


start: download_prepared_data


install_poetry:
	pip3 install poetry

install_unzip:
	sudo apt-get install unzip

mkdirs:
	mkdir $(initial_data_dir) -p
	mkdir $(initial_data_dir) -p

install_deps: install_poetry 
	poetry install

download_initial_data: install_deps install_unzip mkdirs
	poetry run gdown 1QVD03l0IIkak7rqKAuiVHHhabGud_G4y
	unzip data.zip -d $(initial_data_dir)
	make clean

download_prepared_data: install_deps mkdirs
	poetry run gdown 19hxrLoyxaS3JQfdXvLxUIGQ2BSST3bDU
	poetry run gdown 1J9P9G5of3vfDQZgtwJw47NfVA_F2p3I2

clean:
	rm data.zip
