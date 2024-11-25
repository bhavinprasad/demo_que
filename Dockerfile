FROM python:3.9-slim-buster
WORKDIR /ditiss
COPY . /ditiss
CMD ["python", "ditiss/abc.py"]

