<template>
  <div id="app">
    <sui-menu fixed="left" inverted vertical>
      <sui-item>
        <strong>Weather</strong>
      </sui-item>
      <sui-item>
        <sui-input icon="map" inverted placeholder="ZIP Code" transparent type="number" />
      </sui-item>
    </sui-menu>
    <p>{{ message }}</p>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
