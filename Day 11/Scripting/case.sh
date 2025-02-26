echo "Enter your choice (start/stop/restart):"
read choice

case $choice in 
    start)
        echo "starting the service.."
        ;;
    stop)
        echo "stopping the service.."
        ;;
    restart)
        echo "Restarting the service.."
        ;;
    *)
        echo "Invalid choice. Plese enter start, stop, or restart."
        ;;
esac