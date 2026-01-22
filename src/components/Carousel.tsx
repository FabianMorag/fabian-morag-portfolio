import { REFERENCES } from '@/contants/references.js'
import { useRef } from 'react'

export function Carousel() {
  const carouselRef = useRef<HTMLDivElement>(null)
  const rightButtonRef = useRef<HTMLButtonElement>(null)
  const leftButtonRef = useRef<HTMLButtonElement>(null)

  const handleClickLeft = () => {
    if (carouselRef.current) carouselRef.current.scrollBy(-carouselRef.current.clientWidth, 0)
  }

  const handleClickRight = () => {
    if (carouselRef.current) carouselRef.current.scrollBy(carouselRef.current.clientWidth, 0)
  }

  const handleScroll = () => {
    if (carouselRef.current) {
      carouselRef.current.scrollLeft === 0
        ? leftButtonRef.current!.classList.add('hidden')
        : leftButtonRef.current!.classList.remove('hidden')

      carouselRef.current.scrollWidth - carouselRef.current.clientWidth - 1 <= carouselRef.current.scrollLeft
        ? rightButtonRef.current!.classList.add('hidden')
        : rightButtonRef.current!.classList.remove('hidden')
    }
  }

  return (
    <div className="relative">
      <div
        ref={carouselRef}
        onScroll={handleScroll}
        className="hidden-scrollbar flex overflow-x-scroll scroll-smooth snap-mandatory snap-x"
      >
        {REFERENCES.map(({ name, image, role, link, rec }) => (
          <div key={name} className="p-2 min-w-full md:min-w-1/2 snap-center md:snap-start">
            <article className="p-6 md:p-8 rounded-2xl h-full glass">
              <img
                src={image}
                alt={`Imagen de ${name}`}
                className="p-1 border-2 border-primary rounded-full object-cover aspect-square"
                width={80}
                height={80}
              />

              <a href={link} target="_blank" className="font-semibold text-lg md:text-xl link link-primary">
                {name}
              </a>
              <small className="block mb-4 text-sm">{role}</small>

              <div className="[&>p:last-child]:mb-0 [&>p]:mb-[.5lh]">
                {rec.map((paragraph, index) => (
                  <p key={index} className="text-sm md:text-base whitespace-pre-line">
                    {paragraph}
                  </p>
                ))}
              </div>
            </article>
          </div>
        ))}
      </div>

      <button
        onClick={handleClickLeft}
        ref={leftButtonRef}
        className="hidden top-1/2 left-1 absolute bg-neutral/75 border-none size-8 cursor-pointer btn btn-circle btn-neutral"
      >
        ❮
      </button>
      <button
        onClick={handleClickRight}
        ref={rightButtonRef}
        className="top-1/2 right-1 absolute bg-neutral/75 border-none size-8 cursor-pointer btn btn-circle btn-neutral"
      >
        ❯
      </button>
    </div>
  )
}
