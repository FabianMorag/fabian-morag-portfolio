import { useRef } from 'react'

export function Carousel({ children }: { children: React.ReactNode }) {
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
        {children}
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
