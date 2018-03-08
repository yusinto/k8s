<template>
  <div class="hello">
    <ul>
      <li>
        <router-link to="/">Home</router-link>
      </li>
    </ul>
    <h1>Contact Us</h1>
    <div>You can reach me via <a
      href="http://reactjunkie.com/"
      target="_blank"
    >
      reactjunkie.com
    </a> or <a
      href="http://github.com/yusinto"
      target="_blank"
    >
      github
    </a></div>
  </div>
</template>

<script>
export default {
  name: 'ContactUs',
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
