module Faker
  class TimeCode < Time

    class << self


      private

      def date_with_random_time(period)
        ::TimeCode.local(hours(period), minutes, seconds, frames)
      end

      def hours(period)
        raise ArgumentError, 'invalid period' unless TIME_RANGES.has_key? period
        TIME_RANGES[period].to_a.sample
      end

      def minutes
        seconds
      end

      def seconds
        (0..59).to_a.sample
      end

      def frames
        (0..23).to_a.sample
      end
    end
  end
end
