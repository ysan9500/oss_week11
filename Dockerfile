FROM python:3.9
RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

RUN mkdir /workspace/
COPY . /workspace/
WORKDIR /workspace

ENV STUDENT_ID=2020314053

ENTRYPOINT ["uvicorn"]
CMD ["--host=0.0.0.0", "--port=80", "main:app"]
