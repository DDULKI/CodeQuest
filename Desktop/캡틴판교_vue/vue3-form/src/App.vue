<template>
  <form action="" @submit="submitForm">
    <div>
      <label for="userId">ID:</label>
      <input id="userId" type="text" v-model="username">
    </div>
    <div>
      <label for="password">PW:</label>
      <input id="userId" type="text" v-model="password">
    </div>
    <button type="submit">로그인</button>
  </form>
</template>

<script>
  import axios from 'axios';

  export default {
    data() {
      return {
        username: '',
        password: '',
      }
  },
  methods: {
    submitForm() {
       //event.preventDefault(); // 기본적인 동작을 막기 
      const data = {
        username: this.username,
        password: this.password
      }
      axios.post('https://jsonplaceholder.typicode.com/users/', data)
        .then(response => {
          console.log(response);
        })
      console.log('제출됨')
      }
    }
  }
</script>

<style scoped>

</style>