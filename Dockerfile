FROM python:3.6-alpine
ADD . /cfn-python-lint
RUN pip install /cfn-python-lint && \
	apk add --no-cache git make
CMD ["cfn-lint"]
