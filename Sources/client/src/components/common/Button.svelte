<script>
  export let color = 'default'
</script>

<style>
  .button {
    position: relative;
    white-space: nowrap;
    background-image: none;
    border-radius: 4px;
    box-shadow: none;
    padding: 5px 12px;
    text-shadow: none;
    margin-right: 7px;
    min-width: 100px;
    max-width: 250px;
    flex-wrap: wrap;
    margin-bottom: 7px;
    cursor: pointer;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .button.green {
    background-color: #fff;
    border: solid 1px #04a49c;
    color: #04a49c;
  }

  .button.default {
    background-color: #fff;
    border: solid 1px #fff;
    color: #000;
  }
</style>

<button class={`button ${color}`}>
  <slot />
</button>
