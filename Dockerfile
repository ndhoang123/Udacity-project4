FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . /app

## Step 3:
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]
