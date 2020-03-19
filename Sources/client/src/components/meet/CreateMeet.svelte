<script>
  import Box from '../common/Box.svelte'

  import TimePicker from 'svelte-touch-timepicker'
  import swal from 'sweetalert'
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
  <h3 class="title icon-calendar">Create a new meet</h3>

  <TimePicker classes="time-picker" bind:time />
  <button class="button green" on:click={() => swal('Good job!', 'You clicked the button!', 'success')}>
    <h3>Create</h3>
  </button>

</Box>
