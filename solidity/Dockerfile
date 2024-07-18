# Use a base image with Ubuntu
FROM ubuntu:20.04

# Install required dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:ethereum/ethereum && \
    apt-get update && \
    apt-get install -y solc && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/src/app

# Copy the smart contract
COPY ./ticket.sol .

# Copy the entrypoint script
COPY entrypoint.sh .

# Make the entrypoint script executable
RUN chmod +x entrypoint.sh

# Compile the smart contract
RUN solc --bin --abi --optimize -o build ticket.sol

# Expose the port (if necessary)
EXPOSE 8545

# Set the entrypoint
ENTRYPOINT ["./entrypoint.sh"]
