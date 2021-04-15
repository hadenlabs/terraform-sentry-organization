import * as path from 'path'

export const hyphenate = (text: string): string => {
  return text.replace(/([a-zA-Z])(?=[A-Z])/g, '$1-').toLowerCase()
}

export const baseGeneratorPath = path.join(__dirname, '../../../')