import { useEffect, useRef } from 'react'
import useSWRMutation from 'swr/mutation'

const fetcher = async (url: string, { arg: args }: { arg: { [k: string]: FormDataEntryValue } }) => {
  return fetch(url, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(args)
  }).then(res => res.text())
}

export function ContactForm() {
  const tooltipRef = useRef<HTMLSpanElement>(null)
  const formRef = useRef<HTMLFormElement>(null)
  const { data, error, isMutating, trigger } = useSWRMutation('https://resend.fabianmorag.workers.dev/', fetcher)

  const handleSubmit = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault()
    const formData = new FormData(event.currentTarget)
    const values = Object.fromEntries(formData.entries())
    await trigger(values)
  }
  useEffect(() => {
    if (!error) formRef.current!.reset()
  }, [data, error])

  const copyToClipboard = () => {
    navigator.clipboard.writeText('contacto@fabianmorag.com')
    tooltipRef.current!.innerText = '¡Copiado!'
    setTimeout(() => (tooltipRef.current!.innerText = 'Copiar'), 2000)
  }

  return (
    <form ref={formRef} onSubmit={handleSubmit}>
      <fieldset className="fieldset">
        <label className="label">Nombre</label>
        <input
          name="name"
          type="text"
          className="mb-4 w-full input validator"
          placeholder="Ingresa tu nombre"
          required
        />

        <label className="label">Correo electrónico</label>
        <input name="email" className="mb-4 w-full input validator" type="email" placeholder="mail@site.com" required />

        <label className="label">Mensaje</label>
        <textarea name="message" className="mb-4 w-full h-24 textarea validator" placeholder="¡Hola mundo!" required />

        {data && (
          <div role="alert" className="mx-auto mb-4 rounded-2xl w-fit alert alert-success">
            <span className="size-4 icon-[ix--success]"></span>
            <span>Tu mensaje ha sido enviado!</span>
          </div>
        )}
        {error && (
          <div role="alert" className="mx-auto mb-4 rounded-2xl w-fit alert alert-error">
            <span className="size-4 icon-[ix--error]"></span>
            <span>Error al enviar el mensaje</span>
          </div>
        )}

        <button type="submit" disabled={isMutating} className="mb-6 btn btn-neutral">
          {isMutating ? <span className="loading loading-spinner"></span> : 'Enviar mensaje'}
        </button>

        <div>
          <p className="block label">O escribeme al correo</p>

          <button type="button" onClick={copyToClipboard} className="group relative p-0 w-fit btn btn-link">
            <span className="flex items-center gap-1 font-semibold">
              contacto@fabianmorag.com<span className="size-4 icon-[tabler--copy]"></span>
            </span>

            <div className="-right-4 bottom-full absolute opacity-0 group-hover:opacity-100 transition-opacity -translate-y-2 duration-200">
              <span
                ref={tooltipRef}
                className="bg-neutral px-2 py-1 rounded text-neutral-content text-xs leading-none"
                role="tooltip"
              >
                Copiar
              </span>
              <div className="top-full right-4 absolute border-transparent border-t-8 border-t-neutral border-r-8 border-l-8 w-fit h-0"></div>
            </div>
          </button>
        </div>
      </fieldset>
    </form>
  )
}
