# clothing_reviews_with_embeddings

Analyzes women's clothing reviews using text embeddings and t-SNE for visualization and categorization.

## Description

This project takes a dataset of women's clothing e-commerce reviews, generates text embeddings for these reviews using OpenAI's API, performs dimensionality reduction using t-SNE to visualize the embeddings, categorizes the reviews based on predefined topics (Quality, Fit, Style, Comfort), stores these embeddings in a ChromaDB vector database for efficient similarity searching, and demonstrates how to find similar reviews based on an example query.

## Getting Started

### Prerequisites

- Docker
- Python 3.9
- OpenAI API Key

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/ad-archer/clothing_reviews_with_embeddings.git
   ```
2. Create a `.env` file from the `.env.example` and add your OpenAI API Key:
   ```sh
   cp .env.example .env
   ```
   Then edit `.env` with your key.
3. Build the Docker image:
   ```sh
   docker build -t clothing_reviews_with_embeddings .
   ```

### Usage

Run the Docker container:
```sh
docker run -e OPENAI_API_KEY=$(grep OPENAI_API_KEY .env | cut -d '=' -f2) clothing_reviews_with_embeddings
```

This will run the `main.py` script, which will:
- Load women's clothing review data.
- Generate embeddings for the reviews using OpenAI.
- Apply t-SNE for dimensionality reduction and save a visualization (`tsne_visualization.png`).
- Categorize reviews based on predefined topics (Quality, Fit, Style, Comfort).
- Store embeddings in a ChromaDB vector store.
- Perform a similarity search for an example review and print the results.
- Clean up the ChromaDB collection.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

Distributed under the MIT License. See `LICENSE` for more information.
