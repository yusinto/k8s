import Express from 'express';

const PORT = 80;
const app = Express();

app.use(Express.static('dist'));

app.listen(PORT, () => {
  console.log(`Listening at ${PORT}`);
});
