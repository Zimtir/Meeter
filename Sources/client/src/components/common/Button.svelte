<script>
  export let color
</script>

<style>
  .button {
    height: 80px;
    width: 150px;
    margin: 10px;
    border-radius: 4px;
    border-color: dimgray;
  }

  .button.green {
    background: darkgreen;
    color: white;
  }

  .button.red {
    background: red;
    color: white;
  }
</style>

<button class={`button ${color}`}>
  <slot />
</button>
