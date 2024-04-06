const express = require('express');
const app = express();
const port = 3000;

app.use(express.static('public'));

app.get('/api/welcome', (req, res) => {
  res.json({ message: 'Welcome to SkyShop! Your adventure starts here.' });
});

app.listen(port, () => {
  console.log(`Web Frontend service running at http://localhost:${port}`);
});
