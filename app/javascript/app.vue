<template>
  <div id="app">
    <sui-sidebar animation="overlay" :visible="sidebarVisible">
      <sui-menu-item header icon="times" @click="toggleSidebar">
        Saved Locations
      </sui-menu-item>
    </sui-sidebar>
    <sui-menu fixed="top">
      <sui-menu-item icon="content" @click="toggleSidebar" />
      <sui-menu-item header>
        Weather
      </sui-menu-item>
    </sui-menu>
    <sui-sidebar-pusher>
      {{ message }}
    </sui-sidebar-pusher>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
      sidebarVisible: false
    }
  },
  methods: {
    toggleSidebar: function () {
      this.sidebarVisible = !this.sidebarVisible;
    }
  }
}
</script>

<style scoped>
</style>
