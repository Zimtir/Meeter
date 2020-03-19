<script>
  import Box from '../common/Box.svelte'
  import Api from '../../tools/api.ts'
  import TimePicker from 'svelte-touch-timepicker'
  import swal from 'sweetalert'
  let time = new Date()
  $: _time = time.toLocaleTimeString('en-US')

  const addTime = async () => {
    const result = await Api.addTime(time)
    let type = 'success'
    if (result.response_type !== type) {
      type = 'error'
    }

    swal('Message from server', `${result.message}`, type)
  }

  const getTime = async () => {
    const result = await Api.getTime()

    let type = 'success'
    if (result.response_type !== type) {
      type = 'error'
    }

    swal('Message from server', `${result.message}`, type)
  }
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
  <button class="button green" on:click={addTime}>
    <h3>Create</h3>
  </button>
  <button class="button green" on:click={getTime}>
    <h3>Get</h3>
  </button>

</Box>
