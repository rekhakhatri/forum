@extends('layouts.app')

@section('content')

            <div class="panel panel-default">
                <div class="panel-heading">Edit Channel : {{ $channel->title }}</div>

                <div class="panel-body">
                    <form action="{{ route('channels.update',['channel' => $channel->id ]) }}" method="POST">
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}

                        <div class="form-group">
                            <label for="">Channel :</label>
                            <input type="text" name="channel" value="{{ $channel->title }}"class="form-control">
                        </div>
                        <div class="form-group">
                            <div class="text-center">
                                <button class="btn btn-success" type="submit">
                                    Update Channel
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

@endsection
