FROM registry.cn-hangzhou.aliyuncs.com/library/python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install flask -i https://mirrors.aliyun.com/pypi/simple/
EXPOSE 80
CMD ["python", "app.py"]
