import RequestTool from 'node-crud-kit/lib/src/tools/request.tool'
import LoggerTool from 'node-crud-kit/lib/src/tools/logger.tool'

const server = 'http://localhost:4000/api'

export default class Api {
  static addTime = async (time: Date) => {
    const result = await RequestTool.fetchJson(`${server}/time/add`)
    LoggerTool.log(result)
    return result
  }

  static getTime = async () => {
    const result = await RequestTool.fetchJson(`${server}/time/get`)
    LoggerTool.log(result)
    return result
  }

  static getTest = async () => {
    const result = await RequestTool.fetchJson(`${server}/test`)
    LoggerTool.log(result)
    return result
  }
}
