# dl-frameworks-course-hw2

В данном проекте представлена:
- ревлизация доставки моделей через Ray Serve
- реализация пользовательских интерфесов через streamlit и Huggingface Spaces

В качестве данных использовался [Movie Dialog Corpus](https://www.kaggle.com/datasets/Cornell-University/movie-dialog-corpus)

Для запуска проекта:
```
git clone https://github.com/smeyanoff/dl-frameworks-course-hw2.git

make start
```
Makefile установит необходимые зависимости с помощью poetry. Подготовленные данные скачаются в директорию `data/prepared_data`
Если Вам по какой-то причине нужны исходные файлы, Вы можете запустить скрипт `make download_initial_data`.

Ноутбук `homework2.ipynb` разбит по темам
В Ex1 
- п.1 Подготовка данных
- п.2 Было реализовано api на RayServe, портировано на FastApi 
- Кроме того, был реализован пользовательский интефейс с gradio
![santiment](https://github.com/smeyanoff/dl-frameworks-course-hw2/assets/108741347/efed7ee0-fed9-4509-8382-2107aae3d146)
- в п.3 была взята модель c HuggingFace и размечена симантика диалогов
- Также был реализован пользовательский интерфейс с gradio
- Интерфес может учитывать случаи пересечения жанров
![frame_stat1](https://github.com/smeyanoff/dl-frameworks-course-hw2/assets/108741347/8cc54b03-7ba1-48f0-86aa-bf1c751689dc)


Были реализованы streamlit приложения в Huggingface Spaces
- Приложение со статистикой по эмоциям [Приложение 1](https://huggingface.co/spaces/smeyanof/Speaker-Emotions)
![speaker_emotions](https://github.com/smeyanoff/dl-frameworks-course-hw2/assets/108741347/ab049af0-3099-46bd-a16a-30c4b7a960f4)
- Приложение для разметки диалогов [Приложение 2](https://huggingface.co/spaces/smeyanof/annot-interface)
![annot_inter1](https://github.com/smeyanoff/dl-frameworks-course-hw2/assets/108741347/2ec3d866-902a-4c20-8ad4-84c48819ebae)


