<template>
  <div>
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
  </div>
</template>

<script>
export default {
  data: () => {
    return {
      sidebarVisible: false
    }
  },
  methods: {
    toggleSidebar: function () {
      this.sidebarVisible = !this.sidebarVisible
    }
  }
}
</script>

<style>

</style>
