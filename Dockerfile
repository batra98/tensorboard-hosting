FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install TensorFlow and TensorBoard
RUN pip install tensorflow tensorboard

# Copy your logs directory into the container
COPY logs /logs

# Expose the port TensorBoard runs on
EXPOSE 6006

# Command to run TensorBoard
CMD ["tensorboard", "--logdir", "/logs", "--host", "0.0.0.0", "--port", "6006"]
