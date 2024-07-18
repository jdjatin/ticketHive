#!/bin/bash

# Check if the contract ABI file exists
if [ -f build/EventBooking.abi ]; then
  # Output the contract ABI
  cat build/ticket.abi
else
  echo "Contract ABI not found. Compilation might have failed."
fi
