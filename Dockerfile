# Pre-build image used as template
## You can find: python, tensorflow, pytorch, jupyter, ubuntu, etc
FROM python:3.8-slim-buster

# Define custom workspace dir from within the container
WORKDIR /workspace

# The RUN tag makes possible to run commands during image build

# Since this project uses only the tqdm custom lib Im installing mannualy through pip
RUN pip install tqdm

# It is possible to use a local requirements.txt file, you just need use the commands below
# COPY <path to requirements.txt>/requirements.txt requirements.txt
# RUN pip install -r requirements.txt

# This is the default command that the container will run
CMD [ "python", "/workspace/main.py" ]