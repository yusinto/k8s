<template>
  <div class="hello">
    <ul>
      <li>
        <router-link to="/contactus">Contact Us</router-link>
      </li>
    </ul>
    <h1>welcome</h1>
    <div>{{msg}}</div>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data() {
    return {
      msg: 'Kubernetes! You sexy thing..',
    };
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
