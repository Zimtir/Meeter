<script>
  import Box from '../common/Box.svelte'
  import Button from '../common/Button.svelte'

  import TimePicker from 'svelte-touch-timepicker'
  let time = new Date()
  $: _time = time.toLocaleTimeString('en-US')
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

  <TimePicker classes="time-picker" bind:time />

  <Button color={'green'}>
    <h3>Create</h3>
  </Button>
</Box>
