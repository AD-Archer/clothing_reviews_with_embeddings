FROM python:3.9-alpine

# Install build dependencies for packages that might need compilation (e.g., numpy, scipy)
# and then remove them after installation to keep the image small.
RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev openssl-dev cargo

WORKDIR /app

COPY requirements.txt .
# Consider adding --no-cache-dir to pip install if not already present
RUN pip install --no-cache-dir -r requirements.txt && \
    apk del .build-deps

COPY . .

ENV OPENAI_API_KEY YOUR_API_KEY

CMD ["python", "main.py"]
