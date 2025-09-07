# Step 1: Use official Node.js image as base
FROM node:18

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package.json first (to install dependencies)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy rest of the code
COPY . .

# Step 6: Expose port 3000 for external access
EXPOSE 3000

# Step 7: Command to run the app
CMD ["node", "app.js"]
