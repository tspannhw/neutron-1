defmodule Neutron.PulsarNifs do
  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./priv/neutron_nif', 0)
  end

  # todo pulsar_producer send_async
  # which should follow same pattern as the consumer with callback
  def sync_produce(client_ref, topic, message) do
    raise "NIF sync_produce/3 not implemented"
  end

  def make_client(config_map) do
    raise "NIF make_client/1 not implemented"
  end

  def destroy_client(client_ref) do
    raise "NIF destroy_client/1 not implemented"
  end

  def do_consume(client_ref, config) do
    raise "NIF do_consume/2 not implemented"
  end

  def ack(consumer_ref, message_id) do
    raise "NIF ack/2 not implemented"
  end

  def nack(consumer_ref, message_id) do
    raise "NIF nack/2 not implemented"
  end

  def destroy_consumer(consumer_ref) do
    raise "NIF destroy_consumer/1 not implemented"
  end
end
