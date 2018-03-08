import Express from 'express';

const PORT = 8080;
const app = Express();

app.use(Express.static('dist'));

app.listen(PORT, () => {
  console.log(`Listening at ${PORT}`);
});
