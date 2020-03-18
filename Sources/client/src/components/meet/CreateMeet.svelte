<script>
  import Box from '../common/Box.svelte'
  import Button from '../common/Button.svelte'
</script>

<style>
  .title {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
  }
</style>

<Box>
  <h3 class="title">Create a new meet</h3>
  <Button>
    <h3>SELECT CATEGORY</h3>
  </Button>
  <Button icon={'calendar'}>
    <h3>SELECT TIME</h3>
  </Button>
  <Button color={'green'}>
    <h3>Create</h3>
  </Button>
</Box>
