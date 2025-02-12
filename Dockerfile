# Use Python 3.8 image as base
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install only necessary dependencies for TensorBoard visualization
RUN pip install tensorboard torch-tb-profiler

# Copy your logs directory into the container
COPY logs /logs

# Expose the port TensorBoard runs on
EXPOSE 6006

# Command to run TensorBoard
CMD ["tensorboard", "--logdir", "/logs", "--host", "0.0.0.0", "--port", "6006"]
