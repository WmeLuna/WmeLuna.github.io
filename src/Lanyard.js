import React, { useEffect, useRef } from "react"

export function DiscStatus() {
    const status = useRef()
    useEffect(() => {
        fetch("https://api.lanyard.rest/v1/users/865632950443835392")
        .then(response => {return response.json()})
        .then(data => {status.current.innerText = data.data.discord_status})
    }, [])
    return <span ref={status}></span>
}
