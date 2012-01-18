class Object
  def delegate(*args)
    destination = args.pop[:to]
    args.each do |method|
      define_method method do
        send(destination).send(method)
      end
    end
  end
end
