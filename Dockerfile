# Using the official Anaconda base image
FROM continuumio/anaconda3:latest

# Setting the working directory
WORKDIR /app

# Copy the environment file
COPY cluepoints_env.yml .

# Creating and activate a new environment
RUN conda env create -f cluepoints_env.yml && \
    echo "source activate $(head -1 cluepoints_env.yml | cut -d' ' -f2)" >> ~/.bashrc && \
    conda clean -afy

# Makeing a RUN command to use the new environment
SHELL ["conda", "run", "-n", "cluepoints", "/bin/bash", "-c"]

# Installing Jupyter and ipykernel in the conda environment
RUN conda install -c conda-forge jupyterlab && \
    conda run -n cluepoints pip install ipykernel && \
    conda run -n cluepoints python -m ipykernel install --name cluepoints --display-name "Python (cluepoints)"

# Expose Jupyter notebook port
EXPOSE 8888

# Coppying the notebook, metadat files, and Data folder into the container
COPY Exercise_1 /app/Exercise_1
COPY Exercise_2 /app/Exercise_2

# Starting Jupyter notebook
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]


