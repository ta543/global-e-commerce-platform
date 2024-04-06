#!/bin/bash

echo "Starting load tests for SkyShop..."

WEB_FRONTEND_URL="http://localhost:3000/api/welcome"
PAYMENT_GATEWAY_URL="http://localhost:5000/api/payment-status" 
PRODUCT_CATALOG_URL="http://localhost:8080/api/products"

# Function to perform load testing with Apache Bench
# Parameters: URL, Number of Requests, Concurrency Level
perform_load_test() {
    echo "Load testing $1 with $2 requests at a concurrency of $3..."
    ab -n $2 -c $3 $1
}

# Load test the Web Frontend service
perform_load_test "$WEB_FRONTEND_URL" 100 10

# Load test the Payment Gateway service
perform_load_test "$PAYMENT_GATEWAY_URL" 100 10

# Load test the Product Catalog service
perform_load_test "$PRODUCT_CATALOG_URL" 100 10

echo "Load tests completed."
