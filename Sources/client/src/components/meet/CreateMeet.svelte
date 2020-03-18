<script>
  import Box from '../common/Box.svelte'
  import Button from '../common/Button.svelte'
</script>

<style>
  .box {
    width: 600px;
    height: 150px;
    border: 1px solid dimgray;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 10px;
    border-radius: 4px;
    flex-wrap: wrap;
    padding: 20px;

    background: dimgray;
    color: white;
  }

  .title {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
  }
</style>

<div class="box">
  <h3 class="title">Create a new meet</h3>
  <Button>
    <h3>SELECT CATEGORY</h3>
  </Button>
  <Button>
    <h3>SELECT TIME</h3>
  </Button>
  <Button color={'green'}>
    <h3>Create</h3>
  </Button>
</div>
