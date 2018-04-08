<template>
  <div id="app">
    <Header />
    <sui-sidebar-pusher class="content">
      {{ message }}
    </sui-sidebar-pusher>
  </div>
</template>

<script>
import Header from "./components/Header"

export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  },
  components: { Header }
}
</script>

<style scoped>
.content {
  margin-top: 42px;
}
</style>
