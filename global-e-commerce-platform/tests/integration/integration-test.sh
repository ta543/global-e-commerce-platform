#!/bin/bash

# Integration test script for SkyShop microservices

echo "Starting integration tests for SkyShop..."

# Define base URL for each service - replace these with your actual service URLs
WEB_FRONTEND_URL="http://localhost:3000"
PAYMENT_GATEWAY_URL="http://localhost:5000"
PRODUCT_CATALOG_URL="http://localhost:8080"

# Function to perform a simple HTTP GET request and print the response
perform_get_request() {
    RESPONSE=$(curl -s "$1")
    echo "Response from $1: $RESPONSE"
}

# Test the Web Frontend service
echo "Testing the Web Frontend service..."
perform_get_request "$WEB_FRONTEND_URL/api/welcome"

# Test the Payment Gateway service
echo "Testing the Payment Gateway service..."
# Assuming there's a GET endpoint for simplicity; replace with actual tests
perform_get_request "$PAYMENT_GATEWAY_URL/api/payment-status"

# Test the Product Catalog service
echo "Testing the Product Catalog service..."
perform_get_request "$PRODUCT_CATALOG_URL/api/products"

echo "Integration tests completed."
