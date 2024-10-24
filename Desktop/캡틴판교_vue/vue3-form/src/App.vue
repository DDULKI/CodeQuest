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
//import { log } from 'console';
// import { response } from 'express';
import { ref } from 'vue';

export default {
  setup() {
    // data 
    var username = ref('');
    var password = ref('');

    //methods
    var submitForm = () => {
      axios.post('https://jsonplaceholder.typicode.com/users/', {
        username: username.value,
        password: password.value
      }).then(response => {
        console.log(response);
      })
    }
     return { 
       username,
       password,
      submitForm
     }
    },
  //   data() {
  //     return {
  //       username: '',
  //       password: '',
  //     }
  // },
  // methods: {
  //   submitForm() {
  //      //event.preventDefault(); // 기본적인 동작을 막기 
  //     const data = {
  //       username: this.username,
  //       password: this.password
  //     }
  //     axios.post('https://jsonplaceholder.typicode.com/users/', data)
  //       .then(response => {
  //         console.log(response);
  //       })
  //     console.log('제출됨')
  //     }
  //   }
  }
</script>

<style scoped>

</style>